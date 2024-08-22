<template>
    <UCard class="flex flex-col items-center max-w-44 bg-black/80">
        <div class="uppercase text-center">
            {{ name }}
        </div>

        <div class="relative w-32 m-3">
            <div class="w-32" :style="{transform: 'rotate(' + roll + 'deg)'}">
                <div class="flex flex-row justify-center items-center w-32 h-16 rounded-t-full text-2xl text-white" style="background: #3596D9">{{ roll}}°</div>
                <div class="flex flex-row justify-center items-center w-32 h-16 rounded-b-full text-2xl text-white" style="background: #A47B57"></div>
            </div>
            <div class="absolute bottom-0 flex flex-row justify-center items-center w-32 h-16 text-2xl text-white">{{ pitch }}°</div>

            <div class="absolute left-1/2 -translate-x-2/4 flex flex-row justify-center items-center gap-2 h-0 opacity-80" :style="{top: countPositionByPitch() + '%'}">
                <i class="w-5 h-px bg-red-600"></i>
                <i class="w-2 h-2 border-2 border-solid border-red-600 rounded-full"></i>
                <i class="w-5 h-px bg-red-600"></i>
            </div>

            <i class="absolute top-1/2 left-0 -translate-y-2/4">
                <svg width="8" height="8" viewBox="0 0 8 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M6.88179 4.15655L3.78438 5.63701L1.78438 6.59295L1.00985 6.96315L0.5 6.69699L0.5 1.3152L0.990149 1.08093L1.76862 1.48731L3.76862 2.53137L6.88179 4.15655Z" fill="#EAD854" stroke="#EAD854" stroke-linejoin="bevel"/>
                </svg>
            </i>

            <i class="absolute top-1/2 right-0 -translate-y-2/4 rotate-180">
                <svg width="8" height="8" viewBox="0 0 8 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M6.88179 4.15655L3.78438 5.63701L1.78438 6.59295L1.00985 6.96315L0.5 6.69699L0.5 1.3152L0.990149 1.08093L1.76862 1.48731L3.76862 2.53137L6.88179 4.15655Z" fill="#EAD854" stroke="#EAD854" stroke-linejoin="bevel"/>
                </svg>
            </i>
        </div>

        <div class="w-full flex flex-row justify-center">
            <div class="flex flex-col items-center p-2">
                <span class="uppercase text-white opacity-50">roll</span>
                <span class="text-white">{{ roll }}°</span>
            </div>
            <div class="flex flex-col items-center p-2">
                <span class="uppercase text-white opacity-50">PITCH</span>
                <span class="text-white">{{ pitch }}°</span>
            </div>
        </div>
    </UCard>
</template>

<script lang="ts">
    export default {
        props: [
            'name',
            'roll',
            'pitch'
        ],
        data() {
            return {}
        },
        methods: {
            countPositionByPitch() {
                var pitch = this.pitch % 360;
                var topPercent = 50;

                if(pitch < -180) {
                    topPercent = 100 + ((180 + pitch) / 180 * 50);
                }
                else if(pitch < 0) {
                    topPercent = (180 + pitch) / 180 * 50;
                }
                else if(pitch > 180) {
                    topPercent = (pitch - 180) / 180 * 50;
                }
                else {
                    topPercent = 100 - ((180 - pitch) / 180 * 50);
                }

                return topPercent;
            }
        }
    }
</script>
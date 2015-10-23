WAVE = 495-AAB_8min10sec.wav

makeimage = \
	dd if=$(WAVE) bs=3000 count=1000 skip=$1 \
	| ./filter 512 480 4000 0 \
	> $@

audio001.png: FORCE
	$(call makeimage,652)
audio002.png: FORCE
	$(call makeimage,900)
audio003.png: FORCE
	$(call makeimage,1150)
audio004.png: FORCE
	$(call makeimage,1400)
audio005.png: FORCE
	$(call makeimage,1700)
audio006.png: FORCE
	$(call makeimage,1930)
audio007.png: FORCE
	$(call makeimage,2100)


circle-raw.png: FORCE
	dd if=$(WAVE) bs=3000 count=300 skip=652 \
	| ./raw2png 768 384 1200 0 \
	> $@


FORCE:

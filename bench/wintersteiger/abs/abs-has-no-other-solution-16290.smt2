(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.25551274542918722687545596272684633731842041015625p-603 {- 1150727105103300 -603 (-3.78211e-182)}
; -1.25551274542918722687545596272684633731842041015625p-603 | == 1.25551274542918722687545596272684633731842041015625p-603
; [HW: 1.25551274542918722687545596272684633731842041015625p-603] 

; mpf : + 1150727105103300 -603
; mpfd: + 1150727105103300 -603 (3.78211e-182) class: Pos. norm. non-zero
; hwf : + 1150727105103300 -603 (3.78211e-182) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110100100 #b0100000101101001010010001000010101010100010111000100)))
(assert (= r (fp #b0 #b00110100100 #b0100000101101001010010001000010101010100010111000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

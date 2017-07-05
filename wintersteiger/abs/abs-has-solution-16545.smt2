(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6437146360973373671043873400776647031307220458984375p-504 {+ 2899032995260903 -504 (3.1384e-152)}
; 1.6437146360973373671043873400776647031307220458984375p-504 | == 1.6437146360973373671043873400776647031307220458984375p-504
; [HW: 1.6437146360973373671043873400776647031307220458984375p-504] 

; mpf : + 2899032995260903 -504
; mpfd: + 2899032995260903 -504 (3.1384e-152) class: Pos. norm. non-zero
; hwf : + 2899032995260903 -504 (3.1384e-152) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000000111 #b1010010011001010011110110111110111111110100111100111)))
(assert (= r (fp #b0 #b01000000111 #b1010010011001010011110110111110111111110100111100111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

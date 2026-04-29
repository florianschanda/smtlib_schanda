(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5811391229770439537105630734004080295562744140625p927 {+ 2617217937689832 927 (1.79381e+279)}
; 1.5811391229770439537105630734004080295562744140625p927 S == 1.7782795747446709100358930299989879131317138671875p463
; [HW: 1.7782795747446709100358930299989879131317138671875p463] 

; mpf : + 3505059602810168 463
; mpfd: + 3505059602810168 463 (4.23534e+139) class: Pos. norm. non-zero
; hwf : + 3505059602810168 463 (4.23534e+139) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110011110 #b1001010011000101100010001001011110011100110011101000)))
(assert (= r (fp #b0 #b10111001110 #b1100011100111101010101001000100010101100010100111000)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)

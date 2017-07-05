(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.623323015438822292111353817745111882686614990234375p-625 {+ 2807197300061734 -625 (1.16589e-188)}
; 1.623323015438822292111353817745111882686614990234375p-625 | == 1.623323015438822292111353817745111882686614990234375p-625
; [HW: 1.623323015438822292111353817745111882686614990234375p-625] 

; mpf : + 2807197300061734 -625
; mpfd: + 2807197300061734 -625 (1.16589e-188) class: Pos. norm. non-zero
; hwf : + 2807197300061734 -625 (1.16589e-188) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110001110 #b1001111110010010000110001101111000100111011000100110)))
(assert (= r (fp #b0 #b00110001110 #b1001111110010010000110001101111000100111011000100110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

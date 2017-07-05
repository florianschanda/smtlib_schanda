(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.120531080126597966994950184016488492488861083984375p-725 {- 542823727544710 -725 (-6.34859e-219)}
; -1.120531080126597966994950184016488492488861083984375p-725 | == 1.120531080126597966994950184016488492488861083984375p-725
; [HW: 1.120531080126597966994950184016488492488861083984375p-725] 

; mpf : + 542823727544710 -725
; mpfd: + 542823727544710 -725 (6.34859e-219) class: Pos. norm. non-zero
; hwf : + 542823727544710 -725 (6.34859e-219) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100101010 #b0001111011011011000111111111011101001011100110000110)))
(assert (= r (fp #b0 #b00100101010 #b0001111011011011000111111111011101001011100110000110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

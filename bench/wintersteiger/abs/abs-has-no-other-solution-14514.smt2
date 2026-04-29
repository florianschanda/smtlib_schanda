(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.954396149719837882940964846056886017322540283203125p988 {+ 4298218144242098 988 (5.11268e+297)}
; 1.954396149719837882940964846056886017322540283203125p988 | == 1.954396149719837882940964846056886017322540283203125p988
; [HW: 1.954396149719837882940964846056886017322540283203125p988] 

; mpf : + 4298218144242098 988
; mpfd: + 4298218144242098 988 (5.11268e+297) class: Pos. norm. non-zero
; hwf : + 4298218144242098 988 (5.11268e+297) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111011011 #b1111010001010011010011100101101001111001100110110010)))
(assert (= r (fp #b0 #b11111011011 #b1111010001010011010011100101101001111001100110110010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

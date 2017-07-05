(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1442430615709933139356735409819521009922027587890625p709 {+ 649612998341905 709 (3.08166e+213)}
; 1.1442430615709933139356735409819521009922027587890625p709 | == 1.1442430615709933139356735409819521009922027587890625p709
; [HW: 1.1442430615709933139356735409819521009922027587890625p709] 

; mpf : + 649612998341905 709
; mpfd: + 649612998341905 709 (3.08166e+213) class: Pos. norm. non-zero
; hwf : + 649612998341905 709 (3.08166e+213) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011000100 #b0010010011101101000111010000000000011111010100010001)))
(assert (= r (fp #b0 #b11011000100 #b0010010011101101000111010000000000011111010100010001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

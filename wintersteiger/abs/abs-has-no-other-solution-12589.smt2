(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.651414137824389616326925533940084278583526611328125p227 {+ 2933708468369794 227 (3.56176e+068)}
; 1.651414137824389616326925533940084278583526611328125p227 | == 1.651414137824389616326925533940084278583526611328125p227
; [HW: 1.651414137824389616326925533940084278583526611328125p227] 

; mpf : + 2933708468369794 227
; mpfd: + 2933708468369794 227 (3.56176e+068) class: Pos. norm. non-zero
; hwf : + 2933708468369794 227 (3.56176e+068) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011100010 #b1010011011000011000100111011001000011011100110000010)))
(assert (= r (fp #b0 #b10011100010 #b1010011011000011000100111011001000011011100110000010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

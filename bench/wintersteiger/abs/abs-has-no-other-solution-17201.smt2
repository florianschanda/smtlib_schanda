(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.537258175746059496447060155333019793033599853515625p568 {- 2419595720091706 568 (-1.4852e+171)}
; -1.537258175746059496447060155333019793033599853515625p568 | == 1.537258175746059496447060155333019793033599853515625p568
; [HW: 1.537258175746059496447060155333019793033599853515625p568] 

; mpf : + 2419595720091706 568
; mpfd: + 2419595720091706 568 (1.4852e+171) class: Pos. norm. non-zero
; hwf : + 2419595720091706 568 (1.4852e+171) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000110111 #b1000100110001001110000000111011001010110100000111010)))
(assert (= r (fp #b0 #b11000110111 #b1000100110001001110000000111011001010110100000111010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

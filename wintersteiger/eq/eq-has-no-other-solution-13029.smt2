(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.481090600594891615315873423242010176181793212890625p932 {+ 2166639449570602 932 (5.37697e+280)}
; Y = 1.29434255704943002029949639108963310718536376953125p195 {+ 1325601030247092 195 (6.49978e+058)}
; 1.481090600594891615315873423242010176181793212890625p932 = 1.29434255704943002029949639108963310718536376953125p195 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110100011 #b0111101100101000110000001110101111110111110100101010)))
(assert (= y (fp #b0 #b10011000010 #b0100101101011010000010001010100001011001001010110100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

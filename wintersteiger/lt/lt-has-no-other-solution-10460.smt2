(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0367068544317359357620489390683360397815704345703125p-960 {+ 165312975940709 -960 (1.0638e-289)}
; Y = 1.2989130584452059924416289504733867943286895751953125p-733 {+ 1346184738630005 -733 (2.8747e-221)}
; 1.0367068544317359357620489390683360397815704345703125p-960 < 1.2989130584452059924416289504733867943286895751953125p-733 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000111111 #b0000100101100101100111101101001101010010110001100101)))
(assert (= y (fp #b0 #b00100100010 #b0100110010000101100100001111001001011110100101110101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

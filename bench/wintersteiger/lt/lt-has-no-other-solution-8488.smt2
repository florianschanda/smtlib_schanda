(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1947062512374577725182689391658641397953033447265625p355 {+ 876879000519721 355 (8.76818e+106)}
; Y = 1.5337617450599332347138670229469425976276397705078125p578 {+ 2403849196156541 578 (1.51738e+174)}
; 1.1947062512374577725182689391658641397953033447265625p355 < 1.5337617450599332347138670229469425976276397705078125p578 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101100010 #b0011000111011000010001001101010101100100010000101001)))
(assert (= y (fp #b0 #b11001000001 #b1000100010100100100111000001011011100011011001111101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

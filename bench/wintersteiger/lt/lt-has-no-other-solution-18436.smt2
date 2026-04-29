(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4618253854685743231556216414901427924633026123046875p-575 {+ 2079876633906507 -575 (1.18208e-173)}
; Y = 1.2456932558202884475662131080753169953823089599609375p-371 {+ 1106504055359695 -371 (2.5899e-112)}
; 1.4618253854685743231556216414901427924633026123046875p-575 < 1.2456932558202884475662131080753169953823089599609375p-371 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111000000 #b0111011000111010001100000011111100001100110101001011)))
(assert (= y (fp #b0 #b01010001100 #b0011111011100101110000001101001010011000100011001111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

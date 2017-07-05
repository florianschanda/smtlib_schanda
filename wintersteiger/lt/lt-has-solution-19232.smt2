(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2295894469840635832014186235028319060802459716796875p230 {+ 1033978947885627 230 (2.12158e+069)}
; Y = 1.1654049180600736246304904852877371013164520263671875p-684 {+ 744917527340595 -684 (1.45198e-206)}
; 1.2295894469840635832014186235028319060802459716796875p230 < 1.1654049180600736246304904852877371013164520263671875p-684 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011100101 #b0011101011000110010111111011111001001101101000111011)))
(assert (= y (fp #b0 #b00101010011 #b0010101001010111111110100000100110101010011000110011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

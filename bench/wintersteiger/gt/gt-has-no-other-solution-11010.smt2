(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1005259354480596556413729558698832988739013671875p843 {- 452728565424952 843 (-6.45486e+253)}
; Y = 1.76935863285602490435621803044341504573822021484375p-234 {+ 3464883252244668 -234 (6.4091e-071)}
; -1.1005259354480596556413729558698832988739013671875p843 > 1.76935863285602490435621803044341504573822021484375p-234 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101001010 #b0001100110111100000100010101010100100110001100111000)))
(assert (= y (fp #b0 #b01100010101 #b1100010011110100101011111111011100000011000010111100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.00041193740467360129287044401280581951141357421875p28 {- 1855201142188 28 (-2.68546e+008)}
; Y = 1.5863232581219921524251503797131590545177459716796875p485 {+ 2640565206796859 485 (1.58467e+146)}
; -1.00041193740467360129287044401280581951141357421875p28 < 1.5863232581219921524251503797131590545177459716796875p485 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000011011 #b0000000000011010111111110010100110101110010110101100)))
(assert (= y (fp #b0 #b10111100100 #b1001011000011001010001111111001010000100101000111011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

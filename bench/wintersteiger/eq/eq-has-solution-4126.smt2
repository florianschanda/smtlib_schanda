(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5781281550200725316557281985296867787837982177734375p-660 {+ 2603657743520791 -660 (3.29872e-199)}
; Y = 1.05587349553738629737154042231850326061248779296875p258 {+ 251631853682060 258 (4.89047e+077)}
; 1.5781281550200725316557281985296867787837982177734375p-660 = 1.05587349553738629737154042231850326061248779296875p258 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101101011 #b1001010000000000001101001110111010110101010000010111)))
(assert (= y (fp #b0 #b10100000001 #b0000111001001101101110011011010000001011110110001100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

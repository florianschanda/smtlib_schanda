(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.51595729003507795340510710957460105419158935546875p-847 {- 2323665059141068 -847 (-1.6154e-255)}
; Y = -1.5805326255070752949904999695718288421630859375p393 {- 2614486515910080 393 (-3.18854e+118)}
; -1.51595729003507795340510710957460105419158935546875p-847 < -1.5805326255070752949904999695718288421630859375p393 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010110000 #b1000010000010101110001101110011011010101010111001100)))
(assert (= y (fp #b1 #b10110001000 #b1001010010011101110010010100000011010000010111000000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2101024049865969356432060521910898387432098388671875p258 {- 946217112807283 258 (-5.60481e+077)}
; -1.2101024049865969356432060521910898387432098388671875p258 | == 1.2101024049865969356432060521910898387432098388671875p258
; [HW: 1.2101024049865969356432060521910898387432098388671875p258] 

; mpf : + 946217112807283 258
; mpfd: + 946217112807283 258 (5.60481e+077) class: Pos. norm. non-zero
; hwf : + 946217112807283 258 (5.60481e+077) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100000001 #b0011010111001001010001010110111000111010011101110011)))
(assert (= r (fp #b0 #b10100000001 #b0011010111001001010001010110111000111010011101110011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

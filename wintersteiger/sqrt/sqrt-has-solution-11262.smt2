(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6269438008482419721900669173919595777988433837890625p-198 {+ 2823503867882385 -198 (4.0498e-060)}
; 1.6269438008482419721900669173919595777988433837890625p-198 S == 1.2755170719548374336227425374090671539306640625p-99
; [HW: 1.2755170719548374336227425374090671539306640625p-99] 

; mpf : + 1240818582590016 -99
; mpfd: + 1240818582590016 -99 (2.01241e-030) class: Pos. norm. non-zero
; hwf : + 1240818582590016 -99 (2.01241e-030) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100111001 #b1010000001111111011000111001000100010010101110010001)))
(assert (= r (fp #b0 #b01110011100 #b0100011010001000010010010110110110001001001001000000)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)

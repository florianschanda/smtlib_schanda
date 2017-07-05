(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5813606739813639290304081441718153655529022216796875p760 {+ 2618215714710331 760 (9.5902e+228)}
; 1.5813606739813639290304081441718153655529022216796875p760 S == 1.257521639567830362693712231703102588653564453125p380
; [HW: 1.257521639567830362693712231703102588653564453125p380] 

; mpf : + 1159774359997520 380
; mpfd: + 1159774359997520 380 (3.0968e+114) class: Pos. norm. non-zero
; hwf : + 1159774359997520 380 (3.0968e+114) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011110111 #b1001010011010100000011011001100111101110001100111011)))
(assert (= r (fp #b0 #b10101111011 #b0100000111101100111100000010101111110100110001010000)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)

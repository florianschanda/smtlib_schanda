(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1419933510931101761087802515248768031597137451171875p-803 {+ 639481203072019 -803 (2.1408e-242)}
; 1.1419933510931101761087802515248768031597137451171875p-803 S == 1.5112864394899532261007379929651506245136260986328125p-402
; [HW: 1.5112864394899532261007379929651506245136260986328125p-402] 

; mpf : + 2302629418366541 -402
; mpfd: + 2302629418366541 -402 (1.46315e-121) class: Pos. norm. non-zero
; hwf : + 2302629418366541 -402 (1.46315e-121) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011011100 #b0010010001011001101011010001111100110001110000010011)))
(assert (= r (fp #b0 #b01001101101 #b1000001011100011101010110000100001111111011001001101)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)

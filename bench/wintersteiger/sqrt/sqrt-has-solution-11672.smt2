(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9537423304885097596894638627418316900730133056640625p174 {+ 4295273604195521 174 (4.67828e+052)}
; 1.9537423304885097596894638627418316900730133056640625p174 S == 1.3977633313578194940163257342646829783916473388671875p87
; [HW: 1.3977633313578194940163257342646829783916473388671875p87] 

; mpf : + 1791366790884723 87
; mpfd: + 1791366790884723 87 (2.16293e+026) class: Pos. norm. non-zero
; hwf : + 1791366790884723 87 (2.16293e+026) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010101101 #b1111010000101000011101010001011001000010010011000001)))
(assert (= r (fp #b0 #b10001010110 #b0110010111010011110100010101001110111010110101110011)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)

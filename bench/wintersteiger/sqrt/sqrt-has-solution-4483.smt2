(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.661728339226143713602823481778614223003387451171875p-875 {+ 2980159501959358 -875 (6.5965e-264)}
; 1.661728339226143713602823481778614223003387451171875p-875 S == 1.8230350184382875244892829869058914482593536376953125p-438
; [HW: 1.8230350184382875244892829869058914482593536376953125p-438] 

; mpf : + 3706620202351541 -438
; mpfd: + 3706620202351541 -438 (2.56837e-132) class: Pos. norm. non-zero
; hwf : + 3706620202351541 -438 (2.56837e-132) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010010100 #b1010100101100111000001110100011111010000000010111110)))
(assert (= r (fp #b0 #b01001001001 #b1101001010110010011011000100011110100111101110110101)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)

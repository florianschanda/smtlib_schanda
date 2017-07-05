(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.44118514261190444614157968317158520221710205078125p332 {- 1986921243868372 332 (-1.26089e+100)}
; Y = -1.881309032736186548362411485868506133556365966796875p-325 {- 3969063031428942 -325 (-2.7524e-098)}
; Z = 1.315580234656027247552856351830996572971343994140625p-796 {+ 1421247027202378 -796 (3.15675e-240)}
; -1.44118514261190444614157968317158520221710205078125p332 x -1.881309032736186548362411485868506133556365966796875p-325 1.315580234656027247552856351830996572971343994140625p-796 == 1.3556573133204825598596698910114355385303497314453125p8
; [HW: 1.3556573133204825598596698910114355385303497314453125p8] 

; mpf : + 1601738143741717 8
; mpfd: + 1601738143741717 8 (347.048) class: Pos. norm. non-zero
; hwf : + 1601738143741717 8 (347.048) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101001011 #b0111000011110001100000100110111011111111110011010100)))
(assert (= y (fp #b1 #b01010111010 #b1110000110011101011110000000000101000101011101001110)))
(assert (= z (fp #b0 #b00011100011 #b0101000011001001110111011100001100011100100101001010)))
(assert (= r (fp #b0 #b10000000111 #b0101101100001100010110111001000101001011011100010101)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0710815097021650910136258971760980784893035888671875p293 {- 320122660607603 293 (-1.70456e+088)}
; Y = -1.081662065127469762870759950601495802402496337890625p-230 {- 367773246078378 -230 (-6.26892e-070)}
; Z = 1.32930242364884509953526503522880375385284423828125p895 {+ 1483046272437140 895 (3.51132e+269)}
; -1.0710815097021650910136258971760980784893035888671875p293 x -1.081662065127469762870759950601495802402496337890625p-230 1.32930242364884509953526503522880375385284423828125p895 == 1.32930242364884509953526503522880375385284423828125p895
; [HW: 1.32930242364884509953526503522880375385284423828125p895] 

; mpf : + 1483046272437140 895
; mpfd: + 1483046272437140 895 (3.51132e+269) class: Pos. norm. non-zero
; hwf : + 1483046272437140 895 (3.51132e+269) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100100100 #b0001001000110010011001011101011110000101011001110011)))
(assert (= y (fp #b1 #b01100011001 #b0001010011100111110011100001101100001011110110101010)))
(assert (= z (fp #b0 #b11101111110 #b0101010001001101001010011110010000010000101110010100)))
(assert (= r (fp #b0 #b11101111110 #b0101010001001101001010011110010000010000101110010100)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)

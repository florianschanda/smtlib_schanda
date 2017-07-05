(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3636483998447623822158902839873917400836944580078125p452 {+ 1637726798034749 452 (1.58584e+136)}
; 1.3636483998447623822158902839873917400836944580078125p452 S == 1.167753569827453929974581114947795867919921875p226
; [HW: 1.167753569827453929974581114947795867919921875p226] 

; mpf : + 755494914564992 226
; mpfd: + 755494914564992 226 (1.2593e+068) class: Pos. norm. non-zero
; hwf : + 755494914564992 226 (1.2593e+068) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111000011 #b0101110100011000000011111100000010010011011100111101)))
(assert (= r (fp #b0 #b10011100001 #b0010101011110001111001011110000000110010001110000000)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)

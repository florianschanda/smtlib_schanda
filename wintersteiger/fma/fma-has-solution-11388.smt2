(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5351421454088389761949429157539270818233489990234375p-104 {+ 2410065966653495 -104 (7.56884e-032)}
; Y = -1.9640479247815247898500956580392085015773773193359375p-626 {- 4341685874813375 -626 (-7.05301e-189)}
; Z = -1.2739534116805344421408108246396295726299285888671875p155 {- 1233776482761331 155 (-5.81839e+046)}
; 1.5351421454088389761949429157539270818233489990234375p-104 x -1.9640479247815247898500956580392085015773773193359375p-626 -1.2739534116805344421408108246396295726299285888671875p155 == -1.2739534116805344421408108246396295726299285888671875p155
; [HW: -1.2739534116805344421408108246396295726299285888671875p155] 

; mpf : - 1233776482761331 155
; mpfd: - 1233776482761331 155 (-5.81839e+046) class: Neg. norm. non-zero
; hwf : - 1233776482761331 155 (-5.81839e+046) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110010111 #b1000100011111111000100110101110100111110000000110111)))
(assert (= y (fp #b1 #b00110001101 #b1111011011001011110110000100010010110110100110111111)))
(assert (= z (fp #b1 #b10010011010 #b0100011000100001110011111000111111001011101001110011)))
(assert (= r (fp #b1 #b10010011010 #b0100011000100001110011111000111111001011101001110011)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)

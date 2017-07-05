(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.789999521763876000335358185111545026302337646484375p-136 {- 3557841551838662 -136 (-2.05482e-041)}
; Y = 1.488136129750478264810453765676356852054595947265625p-474 {+ 2198369692050330 -474 (3.05088e-143)}
; -1.789999521763876000335358185111545026302337646484375p-136 * 1.488136129750478264810453765676356852054595947265625p-474 == -1.33188148028645070297670827130787074565887451171875p-609
; [HW: -1.33188148028645070297670827130787074565887451171875p-609] 

; mpf : - 1494661310949228 -609
; mpfd: - 1494661310949228 -609 (-6.269e-184) class: Neg. norm. non-zero
; hwf : - 1494661310949228 -609 (-6.269e-184) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101110111 #b1100101000111101011010001001110111010100110111000110)))
(assert (= y (fp #b0 #b01000100101 #b0111110011110110011111010100100101000110001110011010)))
(assert (= r (fp #b1 #b00110011110 #b0101010011110110001011110100011111111010011101101100)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)

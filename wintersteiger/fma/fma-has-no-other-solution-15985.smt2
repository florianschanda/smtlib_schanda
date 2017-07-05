(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.43271746052205362076392702874727547168731689453125p934 {+ 1948786193963828 934 (2.08054e+281)}
; Y = 1.0813747615925890510624185480992309749126434326171875p-178 {+ 366479345985747 -178 (2.82252e-054)}
; Z = -1.4360131277181922282437653848319314420223236083984375p-322 {- 1963628559520295 -322 (-1.68074e-097)}
; 1.43271746052205362076392702874727547168731689453125p934 x 1.0813747615925890510624185480992309749126434326171875p-178 -1.4360131277181922282437653848319314420223236083984375p-322 == 1.549304502301575237055430989130400121212005615234375p756
; [HW: 1.549304502301575237055430989130400121212005615234375p756] 

; mpf : + 2473847551878310 756
; mpfd: + 2473847551878310 756 (5.87237e+227) class: Pos. norm. non-zero
; hwf : + 2473847551878310 756 (5.87237e+227) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110100101 #b0110111011000110100100100100110101011001101100110100)))
(assert (= y (fp #b0 #b01101001101 #b0001010011010100111110011111001111000010100011010011)))
(assert (= z (fp #b1 #b01010111101 #b0110111110011110100011100110110000101101001000100111)))
(assert (= r (fp #b0 #b11011110011 #b1000110010011111001110000100100011101110010010100110)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)

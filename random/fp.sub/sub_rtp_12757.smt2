(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (_ -oo 8 24)))
;; x should be Float32(-oo)

(declare-const y Float32)
(assert (= y (fp #b1 #b01001010 #b10010101100001011001110)))
;; y should be Float32(0xA54AC2CE [Rational(-6644071, 37778931862957161709568), -0.000000])

(declare-const result Float32)
(assert (= result (fp.sub RTP x y)))
(assert (not (= result (_ -oo 8 24))))
(check-sat)
(exit)

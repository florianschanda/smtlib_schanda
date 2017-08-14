(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b00001101 #b00001011111000001001011)))
;; x should be Float32(0x0685F04B [Rational(8777803, 174224571863520493293247799005065324265472), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 87778039381.0 1742245718635204932932477990050653242654720000.0))))
;; w should be Float32(0x0685F04C [Rational(2194451, 43556142965880123323311949751266331066368), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)

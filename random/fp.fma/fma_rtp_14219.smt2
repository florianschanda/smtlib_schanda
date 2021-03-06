(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AEF34B9)))
;; x should be Float32(0x4AEF34B9 [Rational(15676601, 2), 7838300.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b01101001 #b00000011101011100101111)))
;; y should be Float32(0x3481D72F [Rational(8509231, 35184372088832), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b00000000000000000000001)))
;; z should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (fp #b0 #b01111111 #b11100101010010101000101))))
(check-sat)
(exit)

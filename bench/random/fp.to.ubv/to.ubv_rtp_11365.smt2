(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTP +subnormal)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000010010000001111001)))
;; x should be Float32(0x00012079 [Rational(73849, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RTP x)))
;; y should be 1

(declare-const z (_ BitVec 8))
(assert (= z #b00000001))
;; z should be 1

(assert (not (= y z)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +subnormal)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b10101001110110110010101)))
;; x should be Float32(0x0054ED95 [Rational(5565845, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTN x)))
;; y should be 0

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000000000000))
;; z should be 0

(assert (= y z))
(check-sat)
(exit)

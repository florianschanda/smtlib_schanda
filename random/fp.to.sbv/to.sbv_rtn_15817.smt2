(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +subnormal)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11110110101100000100101)))
;; x should be Float32(0x007B5825 [Rational(8083493, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be 0

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000000000000000000))
;; z should be 0

(assert (= y z))
(check-sat)
(exit)

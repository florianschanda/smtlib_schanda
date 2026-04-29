(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -subnormal)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01110010101010111000101)))
;; x should be Float32(0x803955C5 [Rational(-3757509, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be -1

(declare-const z (_ BitVec 32))
(assert (= z #b11111111111111111111111111111111))
;; z should be -1

(assert (= y z))
(check-sat)
(exit)

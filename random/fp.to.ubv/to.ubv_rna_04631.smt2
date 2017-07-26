(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA -subnormal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8030E08B)))
;; x should be Float32(0x8030E08B [Rational(-3203211, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be 0

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000000000000))
;; z should be 0

(assert (= y z))
(check-sat)
(exit)

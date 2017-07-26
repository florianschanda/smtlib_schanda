(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A9995F4)))
;; x should be Float32(0x4A9995F4 [Rational(5032698), 5032698.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be 5032698

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000010011001100101011111010))
;; z should be 5032698

(assert (= y z))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x489328D6)))
;; x should be Float32(0x489328D6 [Rational(4822123, 16), 301382.687500])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be 301383

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000001001001100101000111))
;; z should be 301383

(assert (= y z))
(check-sat)
(exit)

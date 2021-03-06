(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AFF9BBE)))
;; x should be Float32(0x4AFF9BBE [Rational(8375775), 8375775.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be 8375775

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011111111100110111011111))
;; z should be 8375775

(assert (= y z))
(check-sat)
(exit)

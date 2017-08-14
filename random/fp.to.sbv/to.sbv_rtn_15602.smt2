(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A249F44)))
;; x should be Float32(0x4A249F44 [Rational(2697169), 2697169.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be 2697169

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001010010010011111010001))
;; z should be 2697169

(assert (= y z))
(check-sat)
(exit)

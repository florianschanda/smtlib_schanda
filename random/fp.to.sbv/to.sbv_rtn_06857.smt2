(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA119532)))
;; x should be Float32(0xCA119532 [Rational(-4770457, 2), -2385228.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be -2385229

(declare-const z (_ BitVec 32))
(assert (= z #b11111111110110111001101010110011))
;; z should be -2385229

(assert (= y z))
(check-sat)
(exit)

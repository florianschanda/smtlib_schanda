(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AC44BEF)))
;; x should be Float32(0x4AC44BEF [Rational(12864495, 2), 6432247.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be 6432247

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011000100010010111110111))
;; z should be 6432247

(assert (= y z))
(check-sat)
(exit)

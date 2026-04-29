(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A186C1E)))
;; x should be Float32(0x4A186C1E [Rational(4994575, 2), 2497287.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be 2497288

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001001100001101100001000))
;; z should be 2497288

(assert (= y z))
(check-sat)
(exit)

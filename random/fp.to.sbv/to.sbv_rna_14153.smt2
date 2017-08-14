(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11110011000010000100010)))
;; x should be Float32(0x4AF98422 [Rational(8176145), 8176145.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be 8176145

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011111001100001000010001))
;; z should be 8176145

(assert (not (= y z)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNA +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10001011 #b00101100110111001110110)))
;; x should be Float32(0x45966E76 [Rational(4929339, 1024), 4813.807617])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNA x)))
;; y should be 4814

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000001001011001110))
;; z should be 4814

(assert (not (= y z)))
(check-sat)
(exit)

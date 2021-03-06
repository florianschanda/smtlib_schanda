(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00011011010100100100110)))
;; x should be Float32(0x4A8DA926 [Rational(4641939), 4641939.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be 4641939

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010001101101010010010011))
;; z should be 4641939

(assert (not (= y z)))
(check-sat)
(exit)

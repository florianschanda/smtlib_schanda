(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x5098B8EE)))
;; x should be Float32(0x5098B8EE [Rational(20498051072), 20498051072.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be 20498051072

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000010011000101110001110111000000000000))
;; z should be 20498051072

(assert (not (= y z)))
(check-sat)
(exit)

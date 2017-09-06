(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTZ +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x6B5ACEFD)))
;; x should be Float32(0x6B5ACEFD [Rational(264523303197710955516526592), 264523303197710955516526592.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 264523303197710955516526592

(declare-const z Int)
(assert (= z 264523303197710955516526592))
(assert (not (= y z)))

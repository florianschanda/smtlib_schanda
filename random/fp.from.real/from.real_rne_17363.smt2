(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x35C6D7FE)))
;; x should be Float32(0x35C6D7FE [Rational(6515711, 4398046511104), 0.000001])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 5731279961179174873741.0 3868562622766813359059763200.0))))
;; w should be Float32(0x35C6D7FE [Rational(6515711, 4398046511104), 0.000001])

(assert (not (= x w)))
(check-sat)
(exit)

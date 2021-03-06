(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00110010 #b10111111111111010000111)))
;; x should be Float32(0x995FFE87 [Rational(-14679687, 1267650600228229401496703205376), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00000000)))
;; y should be Float32(+zero)

(declare-const result Float32)
(assert (= result (fp.div RNE x y)))
(assert (not (= result (fp #b1 #b11111111 #b00000000000000000000000))))
(check-sat)
(exit)

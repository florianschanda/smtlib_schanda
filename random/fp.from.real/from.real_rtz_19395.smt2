(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b10100101111010000111111)))
;; x should be Float32(0x0052F43F [Rational(5436479, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 757734584413734650803910712121049449273599326043473.0 99464647281957328431076449629364168020091230159469543488092795378631899402506675106611200.0))))
;; w should be Float32(0x0052F43F [Rational(5436479, 713623846352979940529142984724747568191373312), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)

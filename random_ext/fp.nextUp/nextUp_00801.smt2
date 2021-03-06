(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x838081DA)))
;; x should be Float32(0x838081DA [Rational(-4210925, 5575186299632655785383929568162090376495104), -0.000000])

(declare-const result Float32)
(assert (= result (fp.nextUp x)))
(assert (not (= result ((_ to_fp 8 24) #x838081D9))))
(check-sat)
(exit)

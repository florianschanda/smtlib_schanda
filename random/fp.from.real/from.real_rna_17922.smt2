(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x003DCE1D)))
;; x should be Float32(0x003DCE1D [Rational(4050461, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 1063853361.0 223007451985306231415357182726483615059804160000.0))))
;; w should be Float32(0x0033F22B [Rational(3404331, 713623846352979940529142984724747568191373312), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)

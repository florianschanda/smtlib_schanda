(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x806EA7C7)))
;; x should be Float32(0x806EA7C7 [Rational(-7251911, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 103502726999889231727192160356364087564306597824057647.0 10185179881672430431342228442046890805257341968329681253180702246771906498816683530916986880.0)))))
;; w should be Float32(0x806EA7C7 [Rational(-7251911, 713623846352979940529142984724747568191373312), -0.000000])

(assert (= x w))
(check-sat)
(exit)

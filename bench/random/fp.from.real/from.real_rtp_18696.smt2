(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x807CE030)))
;; x should be Float32(0x807CE030 [Rational(-511491, 44601490397061246283071436545296723011960832), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 20459642891.0 1784059615882449851322857461811868920478433280000.0)))))
;; w should be Float32(0x807CE031 [Rational(-8183857, 713623846352979940529142984724747568191373312), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x004B7CA0)))
;; x should be Float32(0x004B7CA0 [Rational(154597, 22300745198530623141535718272648361505980416), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 16629092853.0 7136238463529799405291429847247475681913733120000.0)))))
;; w should be Float32(0x80195FBD [Rational(-1662909, 713623846352979940529142984724747568191373312), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)

-- O DELIMITER é usado para que o banco entenda onde termina a procedure [1, 3]
DELIMITER $$


CREATE PROCEDURE MediaNotasAluno(IN p_aluno_id INT)
BEGIN
    DECLARE media DECIMAL(5,2); -- Variável local para guardar o resultado [4]


    -- Atribuição de valor com SELECT INTO [4, 5]
    SELECT AVG(nota) INTO media
    FROM notas
    WHERE aluno_id = p_aluno_id;


    -- Controle de erros para IDs inexistentes [5-7]
    IF media IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Aluno não encontrado';
    ELSE
        SELECT media AS media_final;
    END IF;
END $$


DELIMITER ;


